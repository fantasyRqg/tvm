//
// Created by Rqg on 2020/11/19.
//


#if defined(DMLC_LOG_CUSTOMIZE) || defined(__ANDROID__)
#include <dmlc/logging.h>

#include <android/log.h>

void dmlc::CustomLogMessage::Log(const std::string& msg) {
  // This is called for every message logged by TVM.
  // We pass the message to logcat.
  __android_log_write(ANDROID_LOG_DEBUG, "TVM_RUNTIME", msg.c_str());
}

#endif
