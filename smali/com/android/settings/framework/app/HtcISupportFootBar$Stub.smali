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

    .prologue
    .line 47
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

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;
    .locals 7
    .parameter "activity"
    .parameter "contentView"
    .parameter "buttons"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 102
    move-object v0, p0

    .line 105
    .local v0, context:Landroid/content/Context;
    new-instance v4, Lcom/htc/widget/HtcOverlapLayout;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v4, root:Lcom/htc/widget/HtcOverlapLayout;
    new-instance v1, Lcom/android/settings/framework/widget/HtcFooter;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, footer:Lcom/android/settings/framework/widget/HtcFooter;
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    .line 113
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    .line 116
    instance-of v5, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 117
    check-cast v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 121
    .local v2, host:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/settings/framework/widget/HtcFooter;->SetDisplayMode(I)V

    .line 126
    .end local v2           #host:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_1

    .line 127
    aget-object v5, p2, v3

    invoke-virtual {v1, v5}, Lcom/android/settings/framework/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v5, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 145
    return-object v4
.end method

.method public static supportFootBar(Ljava/lang/String;)Z
    .locals 8
    .parameter "classFullName"

    .prologue
    const/4 v4, 0x0

    .line 59
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v4

    .line 64
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 65
    .local v3, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 67
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 68
    aget-object v5, v2, v1

    const-class v6, Lcom/android/settings/framework/app/HtcISupportFootBar;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    .line 69
    const/4 v4, 0x1

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    .end local v1           #i:I
    .end local v2           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/ClassNotFoundException;
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
