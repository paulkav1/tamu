package org.colloquy



import org.junit.*
import grails.test.mixin.*

@TestFor(DocumentDataController)
@Mock(DocumentData)
class DocumentDataControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/documentData/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.documentDataInstanceList.size() == 0
        assert model.documentDataInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.documentDataInstance != null
    }

    void testSave() {
        controller.save()

        assert model.documentDataInstance != null
        assert view == '/documentData/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/documentData/show/1'
        assert controller.flash.message != null
        assert DocumentData.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/documentData/list'


        populateValidParams(params)
        def documentData = new DocumentData(params)

        assert documentData.save() != null

        params.id = documentData.id

        def model = controller.show()

        assert model.documentDataInstance == documentData
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/documentData/list'


        populateValidParams(params)
        def documentData = new DocumentData(params)

        assert documentData.save() != null

        params.id = documentData.id

        def model = controller.edit()

        assert model.documentDataInstance == documentData
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/documentData/list'

        response.reset()


        populateValidParams(params)
        def documentData = new DocumentData(params)

        assert documentData.save() != null

        // test invalid parameters in update
        params.id = documentData.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/documentData/edit"
        assert model.documentDataInstance != null

        documentData.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/documentData/show/$documentData.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        documentData.clearErrors()

        populateValidParams(params)
        params.id = documentData.id
        params.version = -1
        controller.update()

        assert view == "/documentData/edit"
        assert model.documentDataInstance != null
        assert model.documentDataInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/documentData/list'

        response.reset()

        populateValidParams(params)
        def documentData = new DocumentData(params)

        assert documentData.save() != null
        assert DocumentData.count() == 1

        params.id = documentData.id

        controller.delete()

        assert DocumentData.count() == 0
        assert DocumentData.get(documentData.id) == null
        assert response.redirectedUrl == '/documentData/list'
    }
}
