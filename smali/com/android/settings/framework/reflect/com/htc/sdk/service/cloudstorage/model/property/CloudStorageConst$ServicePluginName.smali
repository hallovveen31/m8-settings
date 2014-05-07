.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;
.super Lcom/android/settings/framework/reflect/HtcAbsWrapper;
.source "CloudStorageConst.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServicePluginName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/reflect/HtcAbsWrapper",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 39
    const-string v6, "com.htc.sdk.service.cloudstorage.model.property.CloudStorageConst$ServicePluginName"

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, dropbox:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 51
    .local v4, skydrive:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 52
    .local v0, aucloud:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 53
    .local v5, vdisk:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 55
    .local v3, googledrive:Ljava/lang/Object;
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 57
    :try_start_0
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    const-string v7, "DROPBOX"

    invoke-static {v6, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    const-string v7, "SKYDRIVE"

    invoke-static {v6, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    const-string v7, "AUCLOUD"

    invoke-static {v6, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    const-string v7, "VDISK"

    invoke-static {v6, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->sClass:Ljava/lang/Class;

    const-string v7, "GOOGLEDRIVE"

    invoke-static {v6, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 67
    .end local v0           #aucloud:Ljava/lang/Object;
    .end local v1           #dropbox:Ljava/lang/Object;
    .end local v4           #skydrive:Ljava/lang/Object;
    .end local v5           #vdisk:Ljava/lang/Object;
    .local v2, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-direct {v6, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 68
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-direct {v6, v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 69
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 70
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-direct {v6, v5}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 71
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-direct {v6, v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 72
    return-void

    .line 62
    .end local v2           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v2

    .line 63
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;-><init>(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/Object;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;
    .locals 4
    .parameter "instance"

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v1, Landroid/util/AndroidRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The instance cannot be casted to ServicePluginName.\n - instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, toString:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 105
    :goto_0
    return-object v1

    .line 95
    :cond_1
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    goto :goto_0

    .line 98
    :cond_2
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    goto :goto_0

    .line 101
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    goto :goto_0

    .line 104
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    goto :goto_0

    .line 108
    :cond_5
    new-instance v1, Landroid/util/AndroidRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The instance cannot be casted to ServicePluginName.\n - instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
