.class public Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcSenseVersionPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0300

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersionInString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v3, "4.5"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "4+"

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDisclosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c02ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersionInString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ro.build.version.htc_sense"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method
