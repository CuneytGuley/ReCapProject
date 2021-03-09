using Core.Entities.Concrete;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace Business.Constants
{
    public static class Messages
    {
        public static string CarAdded = "Yeni araç eklendi";
        public static string ColorAdded = "Yeni renk eklendi";
        public static string BrandAdded = "Yeni marka eklendi";
        public static string UserAdded = "Yeni kullanıcı eklendi";
        public static string CustomerAdded = "Yeni müşteri eklendi";
        public static string RentalAdded = "Araç kiralama kaydı oluşturuldu";

        public static string CarDeleted = "Araç kaydı silindi";
        public static string ColorDeleted = "Renk kaydı silindi";
        public static string BrandDeleted = "Marka kaydı silindi";
        public static string UserDeleted = "Kullanıcı kaydı silindi";
        public static string CustomerDeleted = "Müşteri kaydı silindi";
        public static string RentalDeleted = "Kiralama iptal edildi";

        public static string CarUpdated = "Araç bilgileri güncellendi";
        public static string ColorUpdated = "Renk bilgisi güncellendi";
        public static string BrandUpdated = "Marka bilgisi güncellendi";
        public static string UserUpdated = "Kullanıcı bilgileri güncellendi";
        public static string CustomerUpdated = "Müşteri bilgileri güncellendi";
        public static string RentalUpdated = "Kiralama kaydı güncellendi";

        public static string CarDailyPriceInvalid = "Araç kiralama bedeli hatalı";
        public static string MaintenanceTime = "Sistem bakım zamanı";
        public static string CarListed = "Araçlar Listelendi";
        public static string CarCountOfBrandError = "Aynı markadan en fazla 10 araç olabilir";
        public static string DescriptionAlreadyExist = "Bu açıklamaya sahip başka araç var";
        public static string ColorLimitExceeded = "Renk sayısı limiti aşıldığı için yeni ürün eklenemiyor";
        public static string AuthorizationDenied = "Yetkiniz yok";
        public static string UserRegistered = "Kullanıcı kaydedildi";
        public static string UserNotFound = "Kullanıcı bulunamadı";
        public static string PasswordError = "Password hatalı";
        public static string SuccessfulLogin = "Başarılı erişim";
        public static string UserAlreadyExists = "Kullanıcı mevcut";
        public static string AccessTokenCreated = "Token oluşturuldu";
        public static string BrandListed = "Markalar listelendi";
        public static string ColorListed = "Renkler listelendi";
    }
}
