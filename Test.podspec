Pod::Spec.new do |s|
          #1.
          s.name               = "Test"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "To test the pod distribution method"
          #4.
          s.homepage        = "http://www.yudiz.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Vijay"
          #7.
          s.platform            = :ios, "9.0"
          #8.
          s.source              = { :git => "https://github.com/Vijayyyy/TestPod.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "Test", "Test/**/*.{h,m,swift}"
    end