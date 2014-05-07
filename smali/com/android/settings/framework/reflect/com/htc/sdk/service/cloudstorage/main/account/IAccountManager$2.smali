.class final Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager$2;
.super Ljava/lang/Object;
.source "IAccountManager.java"

# interfaces
.implements Lcom/android/settings/framework/reflect/HtcMethodReference$IAdvancedMethodProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->sClass:Ljava/lang/Class;

    const-string v1, "getAccountCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public varargs onNotFoundMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "args"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
