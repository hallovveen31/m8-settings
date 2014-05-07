.class public interface abstract Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
.super Ljava/lang/Object;
.source "HtcIStorageEncryptor.java"

# interfaces
.implements Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    }
.end annotation


# static fields
.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"


# virtual methods
.method public abstract canEncrypt()Z
.end method

.method public abstract canReverse()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isEncryptionRequired()Ljava/lang/Boolean;
.end method

.method public abstract isVisible()Z
.end method
