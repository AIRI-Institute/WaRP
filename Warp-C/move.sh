mkdir all_train
cd train_crops
cp -r bottle/* canister/* cans/* cardboard/* detergent/* ../all_train
cd ..

mkdir all_test
cd test_crops
cp -r bottle/* canister/* cans/* cardboard/* detergent/* ../all_test
