.class Lcom/android/settings/NotificationStation$4;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationStation$4;->this$0:Lcom/android/settings/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NotificationStation$4;->this$0:Lcom/android/settings/NotificationStation;

    invoke-virtual {v0}, Lcom/android/settings/NotificationStation;->reloadNotifications()V

    return-void
.end method
