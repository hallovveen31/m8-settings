.class public Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;
.super Ljava/lang/Object;
.source "HtcUninstallButtonDisabledSet.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "uninstall_button_disabled_list"

.field private static final MODULE_NAME:Ljava/lang/String; = "list"

.field private static final TAG:Ljava/lang/String;

.field private static mSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->mSet:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->loadData(Landroid/content/Context;)V

    .line 34
    :cond_0
    sget-object v0, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->mSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static loadData(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 38
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    sput-object v4, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->mSet:Ljava/util/TreeSet;

    .line 40
    const-string v4, "Settings"

    const-string v5, "list"

    invoke-static {p0, v4, v5}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 42
    .local v0, data:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    const-string v4, "uninstall_button_disabled_list"

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 45
    .local v3, subData:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 49
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->TAG:Ljava/lang/String;

    const-string v5, "the set: "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, s:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->mSet:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_1

    .line 59
    const-string v4, "Cust_Uninstall_Button_Enabled"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Uninstall_Button_Enabled> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v4, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Uninstall_Button_Enabled> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v1           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    return-void
.end method
