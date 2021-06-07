package com.road.graduate.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;


@CrossOrigin
@RestController
@RequestMapping("/weather")
public class Weather {

    @GetMapping("/get")
    public String weat() throws IOException {
        URL u = new URL("http://api.k780.com/?app=weather.future&weaId=80&appkey=59172&sign=d20bed9c32965b12910b844f742d87b9&format=json");
        InputStream in = u.openStream();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            byte buf[] = new byte[1024];
            int read = 0;
            while ((read = in.read(buf)) > 0) {
                out.write(buf, 0, read);
            }
        } finally {
            if (in != null) {
                in.close();
            }
        }
        byte b[] = out.toByteArray();
        return new String(b, "utf-8");
    }
}
