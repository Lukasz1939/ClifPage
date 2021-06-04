package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Material;
import pl.coderslab.repository.MaterialRepository;

public class MaterialConverter implements Converter<String, Material> {

    @Autowired
    private MaterialRepository materialRepository;
    @Override
    public Material convert(String id) {
        return materialRepository.getOne(Long.parseLong(id));
    }
}
