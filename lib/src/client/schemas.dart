part of prediction_v1_3_api;

class Input {

  /** Input to the model for a prediction */
  InputInput input;

  /** Create new Input from JSON data */
  Input.fromJson(core.Map json) {
    if (json.containsKey("input")) {
      input = new InputInput.fromJson(json["input"]);
    }
  }

  /** Create JSON Object for Input */
  core.Map toJson() {
    var output = new core.Map();

    if (input != null) {
      output["input"] = input.toJson();
    }

    return output;
  }

  /** Return String representation of Input */
  core.String toString() => JSON.encode(this.toJson());

}

/** Input to the model for a prediction */
class InputInput {

  /** A list of input features, these can be strings or doubles. */
  core.List<core.Object> csvInstance;

  /** Create new InputInput from JSON data */
  InputInput.fromJson(core.Map json) {
    if (json.containsKey("csvInstance")) {
      csvInstance = json["csvInstance"].toList();
    }
  }

  /** Create JSON Object for InputInput */
  core.Map toJson() {
    var output = new core.Map();

    if (csvInstance != null) {
      output["csvInstance"] = csvInstance.toList();
    }

    return output;
  }

  /** Return String representation of InputInput */
  core.String toString() => JSON.encode(this.toJson());

}

class Output {

  /** The unique name for the predictive model. */
  core.String id;

  /** What kind of resource this is. */
  core.String kind;

  /** The most likely class [Categorical models only]. */
  core.String outputLabel;

  /** A list of classes with their estimated probabilities [Categorical models only]. */
  core.List<OutputOutputMulti> outputMulti;

  /** The estimated regression value [Regression models only]. */
  core.num outputValue;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** Create new Output from JSON data */
  Output.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("outputLabel")) {
      outputLabel = json["outputLabel"];
    }
    if (json.containsKey("outputMulti")) {
      outputMulti = json["outputMulti"].map((outputMultiItem) => new OutputOutputMulti.fromJson(outputMultiItem)).toList();
    }
    if (json.containsKey("outputValue")) {
      outputValue = json["outputValue"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Output */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (outputLabel != null) {
      output["outputLabel"] = outputLabel;
    }
    if (outputMulti != null) {
      output["outputMulti"] = outputMulti.map((outputMultiItem) => outputMultiItem.toJson()).toList();
    }
    if (outputValue != null) {
      output["outputValue"] = outputValue;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Output */
  core.String toString() => JSON.encode(this.toJson());

}

class OutputOutputMulti {

  /** The class label. */
  core.String label;

  /** The probability of the class. */
  core.num score;

  /** Create new OutputOutputMulti from JSON data */
  OutputOutputMulti.fromJson(core.Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
  }

  /** Create JSON Object for OutputOutputMulti */
  core.Map toJson() {
    var output = new core.Map();

    if (label != null) {
      output["label"] = label;
    }
    if (score != null) {
      output["score"] = score;
    }

    return output;
  }

  /** Return String representation of OutputOutputMulti */
  core.String toString() => JSON.encode(this.toJson());

}

class Training {

  /** The unique name for the predictive model. */
  core.String id;

  /** What kind of resource this is. */
  core.String kind;

  /** Model metadata. */
  TrainingModelInfo modelInfo;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** The current status of the training job. This can be one of following: RUNNING; DONE; ERROR; ERROR: TRAINING JOB NOT FOUND */
  core.String trainingStatus;

  /** A class weighting function, which allows the importance weights for classes to be specified [Categorical models only]. */
  core.List<core.Map<core.String, core.num>> utility;

  /** Create new Training from JSON data */
  Training.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modelInfo")) {
      modelInfo = new TrainingModelInfo.fromJson(json["modelInfo"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("trainingStatus")) {
      trainingStatus = json["trainingStatus"];
    }
    if (json.containsKey("utility")) {
      utility = json["utility"].map((utilityItem) => _mapMap(utilityItem)).toList();
    }
  }

  /** Create JSON Object for Training */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (modelInfo != null) {
      output["modelInfo"] = modelInfo.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (trainingStatus != null) {
      output["trainingStatus"] = trainingStatus;
    }
    if (utility != null) {
      output["utility"] = utility.map((utilityItem) => _mapMap(utilityItem)).toList();
    }

    return output;
  }

  /** Return String representation of Training */
  core.String toString() => JSON.encode(this.toJson());

}

/** Model metadata. */
class TrainingModelInfo {

  /** Estimated accuracy of model taking utility weights into account [Categorical models only]. */
  core.num classWeightedAccuracy;

  /** A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an estimate, based on the amount and quality of the training data, of the estimated prediction accuracy. You can use this is a guide to decide whether the results are accurate enough for your needs. This estimate will be more reliable if your real input data is similar to your training data [Categorical models only]. */
  core.num classificationAccuracy;

  /** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
  core.Map<core.String, core.Map<core.String, core.num>> confusionMatrix;

  /** A list of the confusion matrix row totals */
  core.Map<core.String, core.num> confusionMatrixRowTotals;

  /** An estimated mean squared error. The can be used to measure the quality of the predicted model [Regression models only]. */
  core.num meanSquaredError;

  /** Type of predictive model (CLASSIFICATION or REGRESSION) */
  core.String modelType;

  /** Number of classes in the trained model [Categorical models only]. */
  core.int numberClasses;

  /** Number of valid data instances used in the trained model. */
  core.int numberInstances;

  /** Create new TrainingModelInfo from JSON data */
  TrainingModelInfo.fromJson(core.Map json) {
    if (json.containsKey("classWeightedAccuracy")) {
      classWeightedAccuracy = json["classWeightedAccuracy"];
    }
    if (json.containsKey("classificationAccuracy")) {
      classificationAccuracy = json["classificationAccuracy"];
    }
    if (json.containsKey("confusionMatrix")) {
      confusionMatrix = _mapMap(json["confusionMatrix"], (confusionMatrixItem) => _mapMap(confusionMatrixItem));
    }
    if (json.containsKey("confusionMatrixRowTotals")) {
      confusionMatrixRowTotals = _mapMap(json["confusionMatrixRowTotals"]);
    }
    if (json.containsKey("meanSquaredError")) {
      meanSquaredError = json["meanSquaredError"];
    }
    if (json.containsKey("modelType")) {
      modelType = json["modelType"];
    }
    if (json.containsKey("numberClasses")) {
      numberClasses = (json["numberClasses"] is core.String) ? core.int.parse(json["numberClasses"]) : json["numberClasses"];
    }
    if (json.containsKey("numberInstances")) {
      numberInstances = (json["numberInstances"] is core.String) ? core.int.parse(json["numberInstances"]) : json["numberInstances"];
    }
  }

  /** Create JSON Object for TrainingModelInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (classWeightedAccuracy != null) {
      output["classWeightedAccuracy"] = classWeightedAccuracy;
    }
    if (classificationAccuracy != null) {
      output["classificationAccuracy"] = classificationAccuracy;
    }
    if (confusionMatrix != null) {
      output["confusionMatrix"] = _mapMap(confusionMatrix, (confusionMatrixItem) => _mapMap(confusionMatrixItem));
    }
    if (confusionMatrixRowTotals != null) {
      output["confusionMatrixRowTotals"] = _mapMap(confusionMatrixRowTotals);
    }
    if (meanSquaredError != null) {
      output["meanSquaredError"] = meanSquaredError;
    }
    if (modelType != null) {
      output["modelType"] = modelType;
    }
    if (numberClasses != null) {
      output["numberClasses"] = numberClasses;
    }
    if (numberInstances != null) {
      output["numberInstances"] = numberInstances;
    }

    return output;
  }

  /** Return String representation of TrainingModelInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class Update {

  /** The true class label of this instance */
  core.String classLabel;

  /** The input features for this instance */
  core.List<core.Object> csvInstance;

  /** Create new Update from JSON data */
  Update.fromJson(core.Map json) {
    if (json.containsKey("classLabel")) {
      classLabel = json["classLabel"];
    }
    if (json.containsKey("csvInstance")) {
      csvInstance = json["csvInstance"].toList();
    }
  }

  /** Create JSON Object for Update */
  core.Map toJson() {
    var output = new core.Map();

    if (classLabel != null) {
      output["classLabel"] = classLabel;
    }
    if (csvInstance != null) {
      output["csvInstance"] = csvInstance.toList();
    }

    return output;
  }

  /** Return String representation of Update */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
