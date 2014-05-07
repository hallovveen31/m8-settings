.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
.super Lcom/android/settings/framework/reflect/HtcAbsWrapper;
.source "CloudStorageAccount.java"


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
.field public static final sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sMethod_getCloud:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_getDisplayName:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_getEmail:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_getId:Lcom/android/settings/framework/reflect/HtcMethodReference;

.field private static final sMethod_setId:Lcom/android/settings/framework/reflect/HtcMethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "com.htc.sdk.service.cloudstorage.model.CloudStorageAccount"

    invoke-static {v0}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sClass:Ljava/lang/Class;

    .line 35
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$1;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getId:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 46
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$2;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getDisplayName:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 57
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$3;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getEmail:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 68
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$4;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$4;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getCloud:Lcom/android/settings/framework/reflect/HtcMethodReference;

    .line 79
    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$5;

    invoke-direct {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount$5;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_setId:Lcom/android/settings/framework/reflect/HtcMethodReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;-><init>(Ljava/lang/Object;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;
    .locals 4

    .prologue
    .line 129
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getCloud:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, instance:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->valueOf(Ljava/lang/Object;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getDisplayName:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getEmail:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_getId:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 137
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sMethod_setId:Lcom/android/settings/framework/reflect/HtcMethodReference;

    invoke-virtual {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method
