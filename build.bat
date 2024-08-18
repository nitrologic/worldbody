set -e
pushd bin
ninja
popd

rem copy bin\worldbody.exe ..\dsptool\binary\win32
