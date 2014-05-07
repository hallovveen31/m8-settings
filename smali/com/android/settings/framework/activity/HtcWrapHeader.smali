.class public final Lcom/android/settings/framework/activity/HtcWrapHeader;
.super Ljava/lang/Object;
.source "HtcWrapHeader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/HtcWrapHeader$OrderComparator;,
        Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/framework/activity/HtcWrapHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public anchor:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public hide:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public index:I

.field public info:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field public mBufferView:Landroid/view/View;

.field private mPrepared:Z

.field public order:F

.field public type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    sget-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    iput-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mPrepared:Z

    return-void
.end method

.method private compareStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/framework/activity/HtcWrapHeader;)I
    .locals 5

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v4, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    iget-object v4, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v4, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    iget-object v4, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    move v3, v0

    goto :goto_0

    :cond_6
    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    move v3, v0

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareTo(Lcom/android/settings/framework/activity/HtcWrapHeader;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/HtcWrapHeader;->compareTo(Lcom/android/settings/framework/activity/HtcWrapHeader;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepareExtraInfo(Landroid/content/Context;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mPrepared:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mPrepared:Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->icon:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    goto :goto_1
.end method

.method public reloadTitleAndSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method
