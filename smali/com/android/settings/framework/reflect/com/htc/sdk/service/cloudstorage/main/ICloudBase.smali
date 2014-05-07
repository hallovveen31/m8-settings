.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
.super Lcom/android/settings/framework/reflect/HtcAbsWrapper;
.source "ICloudBase.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
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
.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sMethod_getAccountManager:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_init:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_release:Lcom/android/settings/framework/reflect/HtcMethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.htc.sdk.service.cloudstorage.main.ICloudBase"

    invoke-static {v0}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sClass:Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$1;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_init:Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$2;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_release:Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$3;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_getAccountManager:Lcom/android/settings/framework/reflect/HtcMethodReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;",
            "M:",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager",
            "<TE;>;>()TM;"
        }
    .end annotation

    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_getAccountManager:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public init(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V
    .locals 5

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_init:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->sMethod_release:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
