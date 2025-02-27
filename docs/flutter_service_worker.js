'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "53b2528fb08eee2347fa438e3563b968",
"version.json": "6ef82d92c09b386c1b31d00431c5713a",
"index.html": "f4b1e60861f34a3da8715e6213c3e37c",
"/": "f4b1e60861f34a3da8715e6213c3e37c",
"main.dart.js": "5b2410d3b24e99fd91690b686a1d8332",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "cf244e2180f79529c0f6594ca8ae7940",
"assets/AssetManifest.json": "496ba7f30550da62bccb4b510604e5b7",
"assets/NOTICES": "34db66f686a7c2e5fd2b1b277f2d86aa",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "0130b2fe7be04fdcd5aabafc820eb7d5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "4ce15ed7d5d3d331e0d76179279dd445",
"assets/fonts/MaterialIcons-Regular.otf": "86087886cfd67e46c1c2729319f05372",
"assets/assets/journey.png": "44b22e05cb3ea4c09f1bb4a7a222218d",
"assets/assets/contaact_us.png": "dc60d9b67a6cd97730da9b21f22b0c67",
"assets/assets/call_now.png": "ca7a66b3d05d54044eef914c69af5e9d",
"assets/assets/mission.png": "e68b1bc55d4d345ed59dba1dd7f9cb89",
"assets/assets/homecare.png": "963892adac16a25a2ed7a4500a4b0525",
"assets/assets/heart_2.png": "f76ca74a892480038a9d74ff76ddf5c9",
"assets/assets/values.png": "c696f28a5bccc07b77b4ed146730391e",
"assets/assets/health_insurance.png": "c1bf9c2b9dec9309596f673a20d555e0",
"assets/assets/prq.png": "5ee5e6f30706187103bbcac7bbac6a47",
"assets/assets/heart_rate.png": "760509d68c4d494b996e09e5c6f03104",
"assets/assets/hrv.png": "6ee2b17da49ec2326cb83507e6567f9d",
"assets/assets/background_9.png": "de9d2d9150e55d2266f4dd7e3584de18",
"assets/assets/background_8.png": "126ededeba25fac19649673f9393f5b1",
"assets/assets/Alpha02%2520daniel-leone.jpeg": "7c3f74792e9508446b55e81aad8fc609",
"assets/assets/background.png": "32926763e4a5319c8e31b4a3b5d94175",
"assets/assets/white_3.png": "9f979c65a096068a88475a274fc3015a",
"assets/assets/connecting_dots.png": "c1023659d9e712c75d6f44d7b1cfdfb4",
"assets/assets/heart.png": "ac39a1947ff0605c080e2f38d91f0c58",
"assets/assets/background_6.png": "837a1040e0b0680d1a41ff660fba9d85",
"assets/assets/expert.png": "bfedc24e5258f18a8ca87fb7c0f3d2ff",
"assets/assets/background_7.png": "fce5a3ff8dfcc452b0ab07c985f15787",
"assets/assets/white_2.png": "a238ab272fb63309b2d2526715f91a80",
"assets/assets/background_5.png": "e74e9ba91c9ae8fb678329bfdfe6ee7d",
"assets/assets/breating_rate.png": "06690dd9202730383784156669db4dd7",
"assets/assets/medical_university.png": "a332ae26cc7d26fe436e5bf894838ea1",
"assets/assets/welness_clinics.png": "023b8448236c45af8b06a5938d8a96d7",
"assets/assets/our_values.png": "ddda9b7954ace59c7702abcc6189813c",
"assets/assets/background_4.png": "480fb4772f1e3f855e32b3938260423f",
"assets/assets/in_safe_hands.png": "dcc6c22a16eca394d0cd55c8f5abf7e6",
"assets/assets/seamless.png": "b70ffe08ecb0da56edbf601cfd442186",
"assets/assets/cutting_edge.png": "4e4ec2da70293f6aa82f77567f30d321",
"assets/assets/background_3.png": "ab6470c397430959796a6683b31222a8",
"assets/assets/personalised.png": "abefddce18eb518b938fe94924abae7e",
"assets/assets/background_2.png": "d1a08ca107bbc2680b677619970407cc",
"assets/assets/logo.jpeg": "fbae4bcf831bc1bee41aba0172bdca10",
"assets/assets/contact_us.png": "e10d8cf2a8b64726023bedb276287e84",
"assets/assets/background_11.png": "c68b9e71a8959f6f6c59d222dac42d75",
"assets/assets/background_10.png": "2e34b0c8543612d3f8d9eda36e5e4a9d",
"assets/assets/white.png": "5885512745bbb29df5778173e0761c79",
"assets/assets/our_journey.png": "9316c0e39e597a02dc4a1b865291ab9e",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
