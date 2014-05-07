.class public abstract Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;
.super Lcom/android/settings/framework/preference/HtcAbsPreference;
.source "HtcAbsDescriptionPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/preference/HtcAbsPreference",
        "<",
        "Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;",
        "Landroid/widget/TextView;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private volatile mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->setSelectable(Z)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->setSelectable(Z)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->setSelectable(Z)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;
    .locals 2
    .parameter "parent"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;

    return-object v0
.end method

.method protected bridge synthetic onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;->onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;

    move-result-object v0

    return-object v0
.end method
