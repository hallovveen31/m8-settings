.class public abstract Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsPreference;
.source "HtcAbsStorageMultiColorBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/preference/HtcAbsPreference",
        "<",
        "Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;",
        "Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAppsSpace:J

.field private volatile mDownloadSpace:J

.field private volatile mImageAndVideoSpace:J

.field private volatile mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

.field private volatile mMusicSpace:J

.field private volatile mOtherSpace:J

.field private volatile mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

.field private volatile mTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected hideMultiColorBar(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->hideCustomView(Z)V

    goto :goto_0
.end method

.method protected final onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;
    .locals 3
    .parameter "parent"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    .line 150
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mTotal:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setTotal(F)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mAppsSpace:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setAppsSpace(J)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMusicSpace:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setMusicSpace(J)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mImageAndVideoSpace:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setImageAndVideoSpace(J)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mDownloadSpace:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setDownloadSpace(J)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-wide v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mOtherSpace:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setOtherSpace(J)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    return-object v0
.end method

.method protected bridge synthetic onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    move-result-object v0

    return-object v0
.end method

.method protected onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setSelectable(Z)V

    .line 139
    return-void
.end method

.method public setAppsSpace(J)Z
    .locals 1
    .parameter "space"

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mAppsSpace:J

    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setAppsSpace(J)V

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownloadSpace(J)Z
    .locals 1
    .parameter "space"

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mDownloadSpace:J

    .line 204
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setDownloadSpace(J)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageAndVideoSpace(J)Z
    .locals 1
    .parameter "space"

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mImageAndVideoSpace:J

    .line 195
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setImageAndVideoSpace(J)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMusicSpace(J)Z
    .locals 1
    .parameter "space"

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMusicSpace:J

    .line 186
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setMusicSpace(J)V

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOtherSpace(J)Z
    .locals 1
    .parameter "space"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mOtherSpace:J

    .line 213
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setOtherSpace(J)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTotal(J)Z
    .locals 2
    .parameter "total"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mTotal:J

    .line 168
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->mMultiColorBar:Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    long-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->setTotal(F)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
