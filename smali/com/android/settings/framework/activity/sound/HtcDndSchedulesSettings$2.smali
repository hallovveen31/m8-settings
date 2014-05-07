.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$2;
.super Ljava/lang/Object;
.source "HtcDndSchedulesSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$2;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$2;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->startEditFragment(ZIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZIZ)V

    return-void
.end method
