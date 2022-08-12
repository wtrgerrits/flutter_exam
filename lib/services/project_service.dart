import 'package:flutter_exam_wouter/models/project_model.dart';

abstract class IProjectService {
  Future<List<Project>> getProjects();
}

class ProjectService extends IProjectService {
  @override
  Future<List<Project>> getProjects() async {
    try {
      return Future.delayed(const Duration(milliseconds: 500), () {
        final result = projects.map((e) => Project.fromJson(e)).toList();
        return result;
      });
    } catch (error) {
      throw Exception('Failed to load projects');
    }
  }

  static final projects = [
    {
      "name": "Oak",
      "location": "Duboislaan 65, 5656 Sint-Niklaas",
      "description":
          "Engineered next to a glacier, the port of Uldama is home to dwarves lead by Baron Theledon. This port wasn't built by a glacier by accident, as it has precious gems, which is of great importance to the people of Uldama and its success.",
      "image": "picture_1"
    },
    {
      "name": "Low Tide Technologies",
      "location": "Remysteeg 42, 4452 Tienen",
      "description":
          "The port itself looks macabre. With its gloomy wooden rooftops, chiseled stone walls and musky swamps, Uldama has a frightening atmosphere. The main attraction is the town hall, which was built 22 years ago and designed by goblins.",
      "image": "picture_2"
    },
    {
      "name": "Lemon Aviation",
      "location": "Janssensweg 41, 7491 Roeselare",
      "description":
          "Uldama has a progressing economy, which is mainly supported by woodcrafting, animal breeding and alchemy. But their biggest strengths are ocean fishing and gorgeous leatherworking. However, Uldama lacks people skilled in wood production.",
      "image": "picture_3"
    },
    {
      "name": "Elviations",
      "location": "Lenaertslaan 34, 8627 Herve",
      "description":
          "Despite its strengths and weaknesses, Uldama is most likely headed towards a gloomy future under the leadership of Baron Theledon. But this remains to be seen.",
      "image": "picture_4"
    },
    {
      "name": "Valkyrecords",
      "location": "Messaoudibaan 75, 9088 Herstal",
      "description":
          "Located inside a cavern, the town of Gandoline is home to wood elves lead by Knight Alen. This town wasn't built by a cavern by accident, as it has unique wildlife, which is of great importance to the people of Gandoline and its success.",
      "image": "picture_5"
    },
    {
      "name": "Hogurity",
      "location": "Coolsstraat 44, 4871 Tienen",
      "description":
          "The town itself looks mundane. With its galvanised steel rooftops, black wooden walls and dusty windows, Gandoline has a peculiar atmosphere. The main attraction is the castle, which was built 30 years ago and designed by vampires.",
      "image": "picture_6"
    },
    {
      "name": "Grottolutions",
      "location": "Verbekedreef 76, 2369 Peer",
      "description":
          "Gandoline has a flourishing economy, which is mainly supported by armorsmithing, fishing and fletching. But their biggest strengths are skilled in the art of war and delicate woodcrafting. However, Gandoline lacks people skilled in alchemy.",
      "image": "picture_7"
    },
    {
      "name": "Ironshack",
      "location": "De Meyerhof 13, 5719 Ieper",
      "description":
          "Despite its strengths and weaknesses, Gandoline is most likely headed towards a gracious future under the leadership of Knight Alen. But this remains to be seen.",
      "image": "picture_8"
    },
    {
      "name": "Redmaster",
      "location": "Bastinsteeg 17, 5190 Borgloon",
      "description":
          "Found on the light side of a river, the crossroad of Jintalman is home to trolls lead by Governor Kaijin. This crossroad wasn't built by a river by accident, as it has fertile soils, which is of great importance to the people of Jintalman and its success.",
      "image": "picture_9"
    }
  ];
}
