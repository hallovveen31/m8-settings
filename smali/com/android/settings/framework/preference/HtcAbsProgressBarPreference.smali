.class public abstract Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsPreference;
.source "HtcAbsProgressBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/preference/HtcAbsPreference",
        "<",
        "Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;",
        "Lcom/htc/widget/HtcProgressBar;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mMax:I

.field private volatile mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

.field private volatile mProgress:I

.field private volatile mProgressBar:Lcom/htc/widget/HtcProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mMax:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgress:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mMax:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgress:I

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mMax:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgress:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressBar()Lcom/htc/widget/HtcProgressBar;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method protected hideProgressBar(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->hideCustomView(Z)V

    goto :goto_0
.end method

.method protected final onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;
    .locals 2
    .parameter "parent"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcProgressBar;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    iget v1, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    iget v1, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    return-object v0
.end method

.method protected bridge synthetic onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    move-result-object v0

    return-object v0
.end method

.method protected onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->setSelectable(Z)V

    .line 144
    return-void
.end method

.method public setMax(I)Z
    .locals 1
    .parameter "max"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mMax:I

    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(I)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 205
    iput p1, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgress:I

    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 208
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 210
    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "mProgressBar is null."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
