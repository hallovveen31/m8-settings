.class public Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcProcessorInfoPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0302

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v2, "ro.product.processor"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, summary:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDisclosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 81
    .end local v0           #summary:Ljava/lang/String;
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1           #summary:Ljava/lang/String;
    .restart local v0       #summary:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0           #summary:Ljava/lang/String;
    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_0
.end method
