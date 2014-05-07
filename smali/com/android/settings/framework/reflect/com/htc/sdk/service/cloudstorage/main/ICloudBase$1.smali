.class final Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase$1;
.super Ljava/lang/Object;
.source "ICloudBase.java"

# interfaces
.implements Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMethod()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->sClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
