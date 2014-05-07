.class public abstract Lcom/android/settings/framework/preference/HtcAbsPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbsPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupParentChildRelationship;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PreferenceView:",
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<TCustomView;TCustomWidgetView;>;CustomView:",
        "Landroid/view/View;",
        "CustomWidgetView:",
        "Landroid/view/View;",
        ">",
        "Lcom/htc/preference/HtcPreference;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;",
        "Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupParentChildRelationship;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMethod_performClick:Ljava/lang/reflect/Method;


# instance fields
.field protected final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mInitialized:Z

.field protected final mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mParent:Lcom/htc/preference/HtcPreferenceGroup;

.field private mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPreferenceView;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 145
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 123
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mInitialized:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->canSelectable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSelectable(Z)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 153
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 123
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mInitialized:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->canSelectable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSelectable(Z)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 192
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 123
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mInitialized:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->canSelectable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSelectable(Z)V

    .line 193
    return-void
.end method

.method public static getMethod_performClick()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 82
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    .line 93
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v1

    .line 87
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_0
    const-class v1, Lcom/htc/preference/HtcPreference;

    const-string v2, "performClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/htc/preference/HtcPreferenceScreen;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    .line 89
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    :goto_1
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->sMethod_performClick:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get performClick"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 298
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 299
    return-void
.end method

.method public static performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .parameter "preference"
    .parameter "preferenceScreen"

    .prologue
    .line 104
    invoke-static {}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getMethod_performClick()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 105
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 107
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG:Ljava/lang/String;

    const-string v3, "Failed to invoke performClick(...)"

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 220
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/CharSequence;
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomView;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomWidgetView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCustomWidgetView;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getCustomWidgetView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 422
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/htc/preference/HtcPreferenceGroup;
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    return-object v0
.end method

.method public final getPreferenceView()Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPreferenceView;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    return-object v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 434
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 692
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method protected logE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "message"
    .parameter "e"

    .prologue
    .line 700
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    return-void
.end method

.method protected logW(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 696
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method public onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 549
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    return-void
.end method

.method protected abstract onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TPreferenceView;"
        }
    .end annotation
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 471
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    .line 473
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The preference view should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getCustomView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    invoke-virtual {v2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getCustomWidgetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mPreferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;

    return-object v0
.end method

.method protected onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPreferenceView;TCustomView;TCustomWidgetView;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    .local p1, preferenceView:Lcom/android/settings/framework/widget/HtcAbsPreferenceView;,"TPreferenceView;"
    .local p2, customView:Landroid/view/View;,"TCustomView;"
    .local p3, customWidgetView:Landroid/view/View;,"TCustomWidgetView;"
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 564
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 566
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->initializeInBackground()V

    .line 567
    return-void
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 4
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 660
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 662
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 664
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 666
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mInitialized:Z

    if-nez v1, :cond_0

    .line 667
    new-instance v1, Lcom/android/settings/framework/app/HtcSuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "did not call through to super.onInitializeInBackground(Context)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/app/HtcSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :sswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 675
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0

    .line 681
    .end local v0           #group:Lcom/htc/preference/HtcPreferenceGroup;
    :sswitch_2
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 683
    .restart local v0       #group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v1, 0x1

    .line 632
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 635
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 636
    const/4 v1, 0x0

    .line 643
    :goto_0
    return v1

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 640
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 641
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v3, "onHandleNonUiMessage(Message, HtcMessageParcel)"

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->checkCallSuperAlarmState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 2
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 600
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 602
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 604
    :sswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 608
    :sswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :sswitch_2
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setTitle(I)V

    goto :goto_0

    .line 616
    :sswitch_3
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 620
    :sswitch_4
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setEnabled(Z)V

    goto :goto_0

    .line 624
    :sswitch_5
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSelectable(Z)V

    goto :goto_0

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x15 -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
    .end sparse-switch
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    const/4 v1, 0x1

    .line 572
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 575
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 576
    const/4 v1, 0x0

    .line 583
    :goto_0
    return v1

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 580
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 581
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v3, "onHandleUiMessage(Message, HtcMessageParcel)"

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->checkCallSuperAlarmState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 513
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 516
    check-cast v1, Ljava/lang/String;

    .end local v1           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setKey(Ljava/lang/String;)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 522
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getCustomTitleRes()I

    move-result v2

    .line 528
    .local v2, textRes:I
    if-lez v2, :cond_4

    .line 529
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setTitleInForeground(I)V

    .line 539
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 541
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 544
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mInitialized:Z

    .line 545
    return-void

    .line 532
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 533
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 534
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 554
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 353
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 354
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 308
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    return-void
.end method

.method public final setParent(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 371
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 372
    return-void
.end method

.method public final setSelectableInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x21
    .end annotation

    .prologue
    .line 364
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSelectableInForeground(Z)V

    .line 365
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 343
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method public final setTitleInForeground(I)V
    .locals 1
    .parameter "titleRes"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 332
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(I)V

    .line 333
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method public final setVisibleInBackground(Z)V
    .locals 2
    .parameter "visible"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 383
    .local p0, this:Lcom/android/settings/framework/preference/HtcAbsPreference;,"Lcom/android/settings/framework/preference/HtcAbsPreference<TPreferenceView;TCustomView;TCustomWidgetView;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->getParent()Lcom/htc/preference/HtcPreferenceGroup;

    move-result-object v0

    .line 392
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz p1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->addPreferenceInBackgroundTo(Ljava/lang/Object;)V

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->removePreferenceInBackgroundFrom(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0
.end method
