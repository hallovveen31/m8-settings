.class public final Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;
.super Ljava/lang/Object;
.source "HtcISupportFootBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcISupportFootBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    new-instance v4, Lcom/htc/widget/HtcOverlapLayout;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/framework/widget/HtcFooter;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    instance-of v5, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v5, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_1

    aget-object v5, p2, v3

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v4
.end method

.method public static supportFootBar(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    aget-object v5, v2, v1

    const-class v6, Lcom/android/settings/framework/app/HtcISupportFootBar;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find the target class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
