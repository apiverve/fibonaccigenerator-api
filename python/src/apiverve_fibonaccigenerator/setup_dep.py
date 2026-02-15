from setuptools import setup, find_packages

setup(
    name='apiverve_fibonaccigenerator',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Fibonacci Generator is a tool for generating Fibonacci sequence numbers. It can generate sequences by count or up to a maximum value, with options to start from any position in the sequence.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/fibonaccigenerator?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
