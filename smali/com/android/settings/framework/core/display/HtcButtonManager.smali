.class public Lcom/android/settings/framework/core/display/HtcButtonManager;
.super Ljava/lang/Object;
.source "HtcButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;,
        Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/display/HtcButtonManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    .line 74
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    return v0
.end method

.method public static getBackButton(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 4
    .parameter "context"

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "BACKKEY_SWITCH_BEHAVIOR"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->toBackButton(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    move-result-object v0

    .line 384
    .local v0, backButton:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    sget-boolean v2, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackButton(): \n - value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - backButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 389
    :cond_0
    return-object v0
.end method

.method public static getDefaultValueByTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "context"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 652
    move-object v8, p2

    .line 655
    .local v8, value:Ljava/lang/Object;
    const-string v0, "SettingsProvider"

    .line 656
    .local v0, CATEGORY_NAME:Ljava/lang/String;
    const-string v2, "res"

    .line 657
    .local v2, MODEL_NAME:Ljava/lang/String;
    const-string v1, "values"

    .line 659
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v9, "SettingsProvider"

    const-string v10, "res"

    invoke-static {p0, v9, v10}, Lcom/android/settings/framework/content/custom/HtcCustomDataReader;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomData;

    move-result-object v5

    .line 662
    .local v5, data:Lcom/android/settings/framework/content/custom/HtcCustomData;
    if-nez v5, :cond_1

    .line 695
    .end local v8           #value:Ljava/lang/Object;
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 666
    .restart local v8       #value:Ljava/lang/Object;
    .restart local p2
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/framework/content/custom/HtcCustomData;->get()Landroid/os/Bundle;

    move-result-object v3

    .line 667
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 668
    const-string v9, "values"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 670
    :cond_2
    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 678
    .end local v8           #value:Ljava/lang/Object;
    .local v6, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 679
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 680
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 681
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 682
    .local v4, content:Ljava/lang/String;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    .line 683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 689
    :cond_4
    :goto_2
    sget-boolean v9, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 690
    sget-object v9, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    :cond_5
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 685
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, value:Ljava/lang/String;
    goto :goto_2

    .line 686
    .end local v8           #value:Ljava/lang/String;
    :cond_6
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_4

    .line 687
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .local v8, value:Ljava/lang/Boolean;
    goto :goto_2

    .end local v4           #content:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/Boolean;
    :cond_7
    move-object p2, v8

    .line 695
    goto :goto_0
.end method

.method public static getDoubleClickSpeed(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 4
    .parameter "context"

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_key_double_click_interval"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->toDoubleClickSpeed(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v0

    .line 617
    .local v0, speed:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    sget-boolean v2, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDoubleClickSpeed(...): \n - value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 622
    :cond_0
    return-object v0
.end method

.method public static hasHomeButtonKey()Z
    .locals 3

    .prologue
    .line 595
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 598
    .local v0, hasKey:Z
    sget-boolean v1, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasHomeButtonKey(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 601
    :cond_0
    return v0
.end method

.method public static hasMenuButtonKey()Z
    .locals 3

    .prologue
    .line 580
    const/16 v1, 0x52

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 583
    .local v0, hasKey:Z
    sget-boolean v1, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMenuButtonKey(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 586
    :cond_0
    return v0
.end method

.method public static hasRecentAppsButtonKey()Z
    .locals 3

    .prologue
    .line 565
    const/16 v1, 0xbb

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 568
    .local v0, hasKey:Z
    sget-boolean v1, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasRecentAppsButtonKey(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 571
    :cond_0
    return v0
.end method

.method public static isNavigationButtonVisible(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, DEFAULT:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIDE_NAV_BAR"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 648
    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method public static setBackButton(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;)Z
    .locals 4
    .parameter "context"
    .parameter "backButton"

    .prologue
    .line 399
    const/4 v0, 0x1

    .line 401
    .local v0, successful:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BACKKEY_SWITCH_BEHAVIOR"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 404
    invoke-virtual {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->isNavigationButtonVisible()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setNavigationButtonVisible(Landroid/content/Context;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 407
    sget-boolean v1, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackButton(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 411
    :cond_0
    return v0
.end method

.method public static setBackButtonOption(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "option"

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BACKKEY_SWITCH_BEHAVIOR"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDoubleClickSpeed(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;)Z
    .locals 4
    .parameter "context"
    .parameter "speed"

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_key_double_click_interval"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 639
    .local v0, successful:Z
    sget-boolean v1, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleClickSpeed(...): \n - speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->log(Ljava/lang/String;)V

    .line 644
    :cond_0
    return v0
.end method

.method public static setHomeButtonOption(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "swipe"
    .parameter "longpress"

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_home_swipe"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_home_longpressed_key"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    return-void
.end method

.method public static setHomeButtonOptionBySIE(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 514
    const/4 v4, 0x0

    .line 518
    .local v4, option:I
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 520
    .local v0, defValue:Ljava/lang/Integer;
    new-instance v1, Lcom/android/settings/framework/util/HtcDisplayMetrics;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;-><init>(Landroid/content/Context;)V

    .line 521
    .local v1, dm:Lcom/android/settings/framework/util/HtcDisplayMetrics;
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getDisplayResolution(Landroid/content/Context;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    move-result-object v6

    sget-object v7, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenResolutionInSpec()F

    move-result v6

    const v7, 0x4089999a

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 523
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 528
    :cond_0
    const-string v6, "def_home_button_default_option"

    invoke-static {p0, v6, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getDefaultValueByTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 529
    sget-boolean v6, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 530
    sget-object v6, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HomeButtonOption = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    if-nez v4, :cond_3

    .line 533
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGoogleOrVoiceSearch(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 535
    const/4 v5, 0x0

    .line 536
    .local v5, swipe:I
    const/4 v3, 0x3

    .line 542
    .local v3, long_press:I
    :goto_0
    const/4 v2, 0x0

    .line 554
    .local v2, hide_menu_bar:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_home_swipe"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_home_longpressed_key"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "HIDE_NAV_BAR"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    return-void

    .line 539
    .end local v2           #hide_menu_bar:I
    .end local v3           #long_press:I
    .end local v5           #swipe:I
    :cond_2
    const/4 v5, 0x1

    .line 540
    .restart local v5       #swipe:I
    const/16 v3, 0xdb

    .restart local v3       #long_press:I
    goto :goto_0

    .line 544
    .end local v3           #long_press:I
    .end local v5           #swipe:I
    :cond_3
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGoogleOrVoiceSearch(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 546
    const/4 v5, 0x0

    .line 551
    .restart local v5       #swipe:I
    :goto_2
    const/16 v3, 0x52

    .line 552
    .restart local v3       #long_press:I
    const/4 v2, 0x1

    .restart local v2       #hide_menu_bar:I
    goto :goto_1

    .line 549
    .end local v2           #hide_menu_bar:I
    .end local v3           #long_press:I
    .end local v5           #swipe:I
    :cond_4
    const/4 v5, 0x1

    .restart local v5       #swipe:I
    goto :goto_2
.end method

.method public static setMenuBarOption(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "option"

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HIDE_NAV_BAR"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setNavigationButtonVisible(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIDE_NAV_BAR"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRecentAppButtonOption(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "option"

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setRecentAppButtonOptionBySIE(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 492
    .local v1, option:I
    invoke-static {p0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->supportAlwaysOpenRecentApps(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 495
    .local v0, defValue:Ljava/lang/Integer;
    const-string v3, "def_recent_apps_button"

    invoke-static {p0, v3, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getDefaultValueByTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 496
    sget-boolean v3, Lcom/android/settings/framework/core/display/HtcButtonManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 497
    sget-object v3, Lcom/android/settings/framework/core/display/HtcButtonManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecentAppButtonOption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    if-nez v1, :cond_2

    .line 500
    const/4 v2, 0x0

    .line 504
    .local v2, visible:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HIDE_NAV_BAR"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    return-void

    .line 492
    .end local v0           #defValue:Ljava/lang/Integer;
    .end local v2           #visible:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 502
    .restart local v0       #defValue:Ljava/lang/Integer;
    :cond_2
    const/4 v2, 0x1

    .restart local v2       #visible:I
    goto :goto_1
.end method

.method private static supportAlwaysOpenRecentApps(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 701
    .local v1, sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 711
    :goto_0
    return v2

    .line 705
    :cond_0
    new-instance v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;-><init>(Landroid/content/Context;)V

    .line 706
    .local v0, dm:Lcom/android/settings/framework/util/HtcDisplayMetrics;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getDisplayResolution(Landroid/content/Context;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenResolutionInSpec()F

    move-result v2

    const v3, 0x4089999a

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 708
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 711
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method
