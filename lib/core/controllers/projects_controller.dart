import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/routing/projects_fillter.dart';
import 'package:house_decoration_web/core/routing/projects_routes.dart';

class ProjectsController extends GetxController {
  static ProjectsController instance = Get.find();
  var index = 0.obs;

  int? i;

  var currentProject = [].obs;
  var projectName = projects.tr.obs;
  var receptionImages = almazaReceptionImagesList.obs;
  var bedRooms = almazaBedroomsImagesList.obs;
  var toilets = almazaToiletsImagesList.obs;
  var living = [].obs;
  var landScape = [].obs;

  changeProject(int index) {
    //int index = projectIndex.indexOf(projectIndex).toInt();

    currentProject.value = projectsMap[index]['all images'];
    projectName.value = projectsMap[index]['name'];
    receptionImages.value = projectsMap[index]['reception'];
    bedRooms.value = projectsMap[index]['bed rooms '];
    toilets.value = projectsMap[index]['toilets'];
    living.value = projectsMap[index]['living'];
    landScape.value = projectsMap[index]['land scape'];
  }

  var page=0.0.obs;
  @override
  void onInit() {
    super.onInit();
    imageController.addListener(() {
     imageController.page!= page.value  ;
      update();
    });
  }

  PageController imageController = PageController();

  selectImage(double index) {
    page.value = index ; 
   imageController.jumpToPage(page.toInt());
    update();
  }
}

List projectsMap = [
  {
    'name': 'Almaza',
    'all images': AlmazaPhotosListImages,
    'bed rooms ': almazaBedroomsImagesList,
    'toilets': almazaToiletsImagesList,
    'reception': almazaReceptionImagesList,
    'living': null,
    'land scape': null
  },
  {
    'name': 'West Somid',
    'all images': westSomidImage,
    'bed rooms ': westSomidBoysBedroomImagesList +
        westSomidGirlsBedroomImagesList +
        westSomidMasterBedroomToiletImagesList,
    'toilets': westSomidMasterToiletImagesList + westSomidGuestToiletImagesList,
    'reception': westSomidReceptionImagesList,
    'living': null,
    'land scape': westSomidLandscapeImagesList
  },
  {
    'name': 'Rehab City',
    'all images': rehabCityImage,
    'bed rooms ': rehabCityMasterBedroomImagesList + rehabCityBedroomImagesList,
    'toilets': rehabCityToiletImagesList,
    'reception': rehabCityReceptionImagesList,
    'living': rehabCityKitchenImagesList,
    'land scape': null
  },
  {
    'name': 'Project',
    'all images': projectImages,
    'bed rooms ': projectKidsRoomImagesList +
        projectDressingRoomImagesList +
        portoMasterBedroomImagesList,
    'toilets': projectMasterToiletImagesList,
    'reception': projectReceptionImagesList,
    'living': portoLivingRoomImagesList,
    'land scape': null
  },
  {
    'name': 'Porto',
    'all images': portoImages,
    'bed rooms ': portoMasterBedroomImagesList,
    'toilets': portoGuestToiletImagesList,
    'reception': portoReceptionImagesList,
    'living': portoLivingRoomImagesList,
    'land scape': null
  },
  {
    'name': 'Mountain View Standalone',
    'all images': MountainViewStandaloneImages,
    'bed rooms ': mountainViewStandaloneMastersImagesList +
        mountainViewStandaloneBedroomsImagesList,
    'toilets': mountainViewIvillaRoomsToiletsImagesList,
    'reception': mountainViewStandaloneLevelsImagesList,
    'living': null,
    'land scape': mountainViewStandaloneRoofImagesList
  },
  {
    'name': 'Mountain View Ivilla',
    'all images': MountainViewIvillaImages,
    'bed rooms ': mountainViewIvillaMastersImagesList +
        mountainViewIvillaBedroomsImagesList,
    'toilets': mountainViewIvillaRoomsToiletsImagesList +
        mountainViewIvillaGuestToiletsImagesList,
    'reception': mountainViewIvillaReceptionsImagesList,
    'living': mountainViewIvillaStaircaseLivingRoomsImagesList,
    'land scape': mountainViewIvillaLandscapesImagesList
  },
  {
    'name': 'Astoria',
    'all images': AstoriaImages,
    'bed rooms ': astoriaBedroomsImagesList + astoriaMastersImagesList,
    'toilets': null,
    'reception': astoriaReceptionsImagesList,
    'living': astoriaKitchensImagesList,
    'land scape': null
  },
];
