package org.example.filemanagement.repository;

import org.example.filemanagement.model.FileMetadata;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FileRepository extends JpaRepository<FileMetadata, Long> {
}

