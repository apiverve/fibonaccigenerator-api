from setuptools import setup, find_packages

setup(
    name='apiverve_fibonaccigenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Fibonacci Generator computes Fibonacci numbers and sequences based on a target count or ceiling value. Each response provides the generated sequence starting from any position, total sum, step ratios, and a golden ratio approximation.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/fibonaccigenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
