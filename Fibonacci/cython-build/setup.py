# setup.py - unnecessary if not redistributing the code, see below
from setuptools import setup
from Cython.Build import cythonize

setup(name = 'Fibonacci app', ext_modules = cythonize("*.pyx"))

