String? isRequiredValidator(String? value, {String? field}) {
  if (value?.isEmpty ?? true) {
    return field == null
        ? 'thisFieldIsRequired'
        : '$field ${'thisFieldIsRequired'}';
  }
  return null;
}
