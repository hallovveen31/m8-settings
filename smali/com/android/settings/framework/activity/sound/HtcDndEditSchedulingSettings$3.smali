.class Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;
.super Ljava/lang/Object;
.source "HtcDndEditSchedulingSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->initFooterBar(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->finishFragment()V

    .line 246
    return-void
.end method
