.class public interface abstract Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;
.super Ljava/lang/Object;
.source "HtcIEncryptionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;
    }
.end annotation


# static fields
.field public static final KEY_ENCRYPTION:Ljava/lang/String; = "sd_encryption_256"

.field public static final KEY_ENCRYPTION_OLD:Ljava/lang/String; = "sd_encryption"


# virtual methods
.method public abstract decrypt(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract isEncrypted()Z
.end method
