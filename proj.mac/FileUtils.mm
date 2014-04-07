//
//  Utils.m
//  3DEngineCpp
//
//  Created by James Chen on 14-4-7.
//
//

#include "FileUtils.h"

std::string fullPath(const std::string& directory, const std::string& filename)
{
    NSString* fullpath = [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:filename.c_str()]
                                                         ofType:nil
                                                    inDirectory:[NSString stringWithUTF8String:directory.c_str()]];
    if (fullpath != nil) {
        return [fullpath UTF8String];
    }
    
    return "";
}
