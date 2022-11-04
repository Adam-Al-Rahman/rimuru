#include "fib.h"

#include <glog/logging.h>
#include <glog/stl_logging.h>

#include "absl/strings/str_format.h"

namespace demo {
std::string hello_world(std::string msg) {
  LOG(INFO) << "hello_world(): " << msg;

  std::string s =
      absl::StrFormat("Welcome to %s, Number %d!", "The Village", 6);
  return msg;
};
}  // namespace demo
