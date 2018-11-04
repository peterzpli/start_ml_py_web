Start machine learning in python web
======



Install
-------



    # clone the repository
    $ git clone https://github.com/peterzpli/start_ml_py_web.git


on Windows cmd::

    $ py -3 -m venv venv
    $ venv\Scripts\activate.bat

add vm param in IDE before run
FLASK_APP=start_ml
FLASK_ENV=development

dev_mode.py is the entry when debug or run in IDE

Open http://127.0.0.1:5000 in a browser.


Test
----

::

    $ pip install '.[test]'
    $ pytest

Run with coverage report::

    $ coverage run -m pytest
    $ coverage report
    $ coverage html  # open htmlcov/index.html in a browser


Production
____

activate phonefilter
cd ${YOUR_PROJECT}\start_ml_py_web
python setup.py bdist_wheel
pip uninstall flaskr
pip install dist/flaskr-1.0.1-py2.py3-none-any.whl
set FLASK_APP=start_ml
flask init-db
waitress-serve --call start_ml:create_app
