cp mmPromise/mm*.js ../todomvc/examples/avalon/bower_components/oniui/mmPromise -rf
cp mmRouter/mm*.js ../todomvc/examples/avalon/bower_components/oniui/mmRouter -rf
cp avalon.js ../todomvc/examples/avalon/bower_components/oniui
cp ../todomvc/examples/avalon/bower_components/todomvc* mmRouter/ -rf
cp ../todomvc/examples/avalon/index.html mmRouter/avalon.mmRouter.ex8.html -f
cp ../todomvc/examples/avalon/js mmRouter/ -rf
cp ../todomvc/learn.json mmRouter/ -f
cd mmRouter
sed -i "s/bower_components\///g" avalon.mmRouter.ex8.html
sed -i "s/oniui\//..\//g" avalon.mmRouter.ex8.html
sed -i "s/..\/..\/js/mmRouter\/js/g" avalon.mmRouter.ex8.html
sed -i "s/..\/..\/js/mmRouter\/js/g" js/app.js
cp ../mmPromise/mmPromise.js ../../mmRouter/
cp mm*.js ../../mmRouter/
cd ../../mmRouter/
sed -i "s/..\/mmPromise\///g" mm*.js
sed -i "s/mmRouter\///g" mm*.js
