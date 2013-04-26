part of prediction_v1_3_api_client;

class HostedmodelsResource_ extends Resource {

  HostedmodelsResource_(Client client) : super(client) {
  }

  /**
   * Submit input and request an output against a hosted model
   *
   * [request] - Input to send in this request
   *
   * [hostedModelName] - The name of a hosted model
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String hostedModelName, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "hostedmodels/{hostedModelName}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (hostedModelName == null) paramErrors.add("hostedModelName is required");
    if (hostedModelName != null) urlParams["hostedModelName"] = hostedModelName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Output.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TrainingResource_ extends Resource {

  TrainingResource_(Client client) : super(client) {
  }

  /**
   * Delete a trained model
   *
   * [data] - mybucket/mydata resource in Google Storage
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String data, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "training/{data}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (data == null) paramErrors.add("data is required");
    if (data != null) urlParams["data"] = data;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Check training status of your model
   *
   * [data] - mybucket/mydata resource in Google Storage
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> get(core.String data, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "training/{data}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (data == null) paramErrors.add("data is required");
    if (data != null) urlParams["data"] = data;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Begin training your model
   *
   * [request] - Training to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> insert(Training request, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "training";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Submit data and request a prediction
   *
   * [request] - Input to send in this request
   *
   * [data] - mybucket/mydata resource in Google Storage
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String data, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "training/{data}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (data == null) paramErrors.add("data is required");
    if (data != null) urlParams["data"] = data;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Output.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Add new data to a trained model
   *
   * [request] - Update to send in this request
   *
   * [data] - mybucket/mydata resource in Google Storage
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> update(Update request, core.String data, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "training/{data}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (data == null) paramErrors.add("data is required");
    if (data != null) urlParams["data"] = data;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

