rm -rf build
rm -rf dist
rm -rf mindsdb.egg-info
# python3 setup.py --help-commands
# python3 setup.py develop --uninstall
python3 setup.py clean
python3 setup.py build
#python3 setup.py install
python3 setup.py sdist bdist_wheel

echo "Do you want to publish this version (yes/no)?"

read publish

if [ "$publish" = "yes" ]; then
    echo "Publishing mindsdb to Pypi"
    python3 -m twine upload dist/*
fi

