import http from "k6/http";

export default function () {
  http.get(
    "http://vm19dfj10fj91.eastus.cloudapp.azure.com/VbNetFxAspNetWebApiCustomizations/api/ValuesTaskDelay",
    {
      headers: {
        Accept: "application/json",
      },
    }
  );
}