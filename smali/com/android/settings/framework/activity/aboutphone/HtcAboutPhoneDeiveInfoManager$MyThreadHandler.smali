.class final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager$MyThreadHandler;
.super Landroid/os/Handler;
.source "HtcAboutPhoneDeiveInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager$MyThreadHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method
