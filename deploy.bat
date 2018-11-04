activate phonefilter
cd C:\py\project\flask\examples\tutorial
python setup.py bdist_wheel
pip uninstall flaskr
pip install dist/flaskr-1.0.1-py2.py3-none-any.whl
set FLASK_APP=flaskr
flask init-db
waitress-serve --call flaskr:create_app
pause