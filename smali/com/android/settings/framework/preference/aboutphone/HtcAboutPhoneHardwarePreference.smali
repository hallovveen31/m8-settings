.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhoneHardwarePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getHardwareSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0c06e6

    return v0
.end method

.method public getHardwareSummary()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 98
    const/4 v7, 0x1

    .line 99
    .local v7, wifiStatus:Z
    const/4 v0, 0x1

    .line 101
    .local v0, bluetoothStatus:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 103
    .local v4, mContext:Landroid/content/Context;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    .line 107
    .local v9, words:[Ljava/lang/String;
    const/4 v7, 0x1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, count:I
    if-eqz v7, :cond_1

    .line 114
    const v10, 0x7f0c0e60

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, word:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput-object v8, v9, v1

    .line 117
    .end local v8           #word:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    const v10, 0x7f0c0e61

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 119
    .restart local v8       #word:Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object v8, v9, v2

    .line 122
    .end local v8           #word:Ljava/lang/String;
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 140
    const-string v3, "The hardware summary in about phone is illegal."

    .line 141
    .local v3, e:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 124
    .end local v3           #e:Ljava/lang/String;
    :pswitch_0
    const v5, 0x7f0c00f9

    .line 125
    .local v5, resId:I
    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, summary:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 128
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    :pswitch_1
    const v5, 0x7f0c00fa

    .line 129
    .restart local v5       #resId:I
    new-array v10, v11, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    aget-object v11, v9, v13

    aput-object v11, v10, v13

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_2

    .line 136
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f0c00fc

    .line 137
    .restart local v5       #resId:I
    new-array v10, v11, [Ljava/lang/Object;

    aget-object v11, v9, v12

    aput-object v11, v10, v12

    aget-object v11, v9, v13

    aput-object v11, v10, v13

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_2

    .end local v1           #count:I
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_0
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_1

    :cond_1
    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_0

    .line 122
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

    .prologue
    .line 61
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->setEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method
