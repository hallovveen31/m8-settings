.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhoneHardwarePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getHardwareSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c06e6

    return v0
.end method

.method public getHardwareSummary()Ljava/lang/String;
    .locals 14

    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_1

    const v10, 0x7f0c0e60

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v1, 0x1

    aput-object v8, v9, v1

    :goto_0
    if-eqz v0, :cond_0

    const v10, 0x7f0c0e61

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v2, 0x1

    aput-object v8, v9, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v3, "The hardware summary in about phone is illegal."

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_0
    const v5, 0x7f0c00f9

    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6

    :pswitch_1
    const v5, 0x7f0c00fa

    new-array v10, v11, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    aget-object v11, v9, v13

    aput-object v11, v10, v13

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_2
    const v5, 0x7f0c00fc

    new-array v10, v11, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    aget-object v11, v9, v13

    aput-object v11, v10, v13

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onApplyDemoMode()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
