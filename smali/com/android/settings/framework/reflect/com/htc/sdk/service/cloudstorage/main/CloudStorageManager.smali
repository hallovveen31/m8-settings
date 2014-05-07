.class public final Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation


# static fields
.field public static final AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field public static final VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sMethod_getInstance:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_getServiceName:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_isServiceEnabled:Lcom/android/settings/framework/reflect/HtcMethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "com.htc.sdk.service.cloudstorage.main.CloudStorageManager"

    invoke-static {v0}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sClass:Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 32
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->SKYDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 33
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->AUCLOUD:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 34
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->VDISK:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 35
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    .line 47
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$1;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_getInstance:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 62
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$2;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_isServiceEnabled:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 82
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$3;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_getServiceName:Lcom/android/settings/framework/reflect/HtcMethodReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;I)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
    .locals 6
    .parameter "context"
    .parameter "service"
    .parameter "pluginVersion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_getInstance:Lcom/android/settings/framework/reflect/HtcMethodReference;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->getInstance()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, instance:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-object v1

    .line 116
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;->sClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getServiceName(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "service"
    .parameter "pluginVersion"

    .prologue
    .line 145
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_getServiceName:Lcom/android/settings/framework/reflect/HtcMethodReference;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->getInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;I)Z
    .locals 5
    .parameter "context"
    .parameter "service"
    .parameter "pluginVersion"

    .prologue
    .line 131
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->sMethod_isServiceEnabled:Lcom/android/settings/framework/reflect/HtcMethodReference;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->getInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
