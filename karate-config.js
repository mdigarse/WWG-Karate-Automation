function conf() {
    var env = karate.env; // get java system property 'karate.env'
      karate.log('karate.env system property was:', env);
        if (!env) {
          env = 'dev'; // a custom 'intelligent' default
        }
    karate.log('karate.env system property was:', env);
        karate.configure('ssl', true);      // avoid needing certs

    karate.configure('connectTimeout', 100000);
    karate.configure('readTimeout', 100000);
    var basePath = java.lang.System.getProperty("user.dir")+'/src/test/java';
    var AppKeyProd = '';
    var AppTokenProd = '';
   if (env == 'dev') {
       var baseUrl = 'https://reqres.in/';
     }

     else if (env == 'test'){

                  var baseUrl = 'https://reqres.in/';
                       }
                       else if (env == 'prod'){

                                              var baseUrl = 'https://reqres.in/';
                                         }

var config = {
      env: env,
      Url: baseUrl,
      sharedBasePath: basePath,
      AppKeyProd: AppKeyProd,
      AppTokenProd: AppTokenProd


  }

return config;
}