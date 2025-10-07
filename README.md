## 🧠 Research Summary

### 1. Git Tags & Semantic Versioning

- Tags like `v1.0.0`, `v1.1.0-beta` identify **stable** and **pre-release** versions.
- Semantic Versioning follows:  
  `MAJOR.MINOR.PATCH`
  - **MAJOR** – breaking changes
  - **MINOR** – new features
  - **PATCH** – small fixes

### 2. Automated Releases

- The workflow uses [softprops/action-gh-release](https://github.com/softprops/action-gh-release) to automatically:
  - Create GitHub Releases using tag names.
  - Generate changelogs.
  - Attach relevant build artifacts.

### 3. Security Scanning with Trivy

- [Trivy](https://github.com/aquasecurity/trivy) scans Docker images for known vulnerabilities.
- Configured to **fail pipeline if any CRITICAL vulnerabilities** are found.

---

## 🧰 Technologies Used

| Tool / Service                       | Purpose                    |
| ------------------------------------ | -------------------------- |
| **GitHub Actions**                   | CI/CD automation           |
| **Docker**                           | Containerization           |
| **Trivy**                            | Vulnerability scanning     |
| **GHCR (GitHub Container Registry)** | Image hosting              |
| **Node.js**                          | Base application           |
| **softprops/action-gh-release**      | Automated release creation |

---

## 🧾 Key Learnings

- Designed a **multi-job CI/CD pipeline** with dependencies (`needs:`)
- Learned to **debug failing builds** using workflow logs
- Gained experience in **release automation and semantic versioning**
- Integrated **security scanning** in the release process
- Understood how to publish and tag **Docker images on GHCR**

---

## 🏁 Live Badge

These badges reflect the live status of the workflows in this repository.

| Workflow    | Status                                                                                                    |
| ----------- | --------------------------------------------------------------------------------------------------------- |
| **Release** | ![Release Status](https://github.com/Adarsha-Shrestha/LSP-devops/actions/workflows/release.yml/badge.svg) |

---

## 🧭 References

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Docker Official Docs](https://docs.docker.com/)
- [Trivy Scanner](https://aquasecurity.github.io/trivy/)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [Semantic Versioning 2.0.0](https://semver.org/)
