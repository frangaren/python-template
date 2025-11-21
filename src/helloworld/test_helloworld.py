"""Unit tests for the hello module."""

from helloworld.helloworld import say_hello


def test_say_hello() -> None:
    """`say_hello` should return the correct greeting message."""
    assert say_hello("Alice") == "Hello, Alice!"
    assert say_hello("Bob") == "Hello, Bob!"
