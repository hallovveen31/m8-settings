.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;
.super Lcom/android/settings/HtcMobileNetworkEnabler;
.source "HtcMobileDataWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->ensureMobileDataObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-direct {p0, p2}, Lcom/android/settings/HtcMobileNetworkEnabler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCheckStateChange(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetChecked(Z)V

    .line 132
    return-void
.end method

.method public onEnableStateChange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setSwitchEnabled(Z)V

    .line 136
    return-void
.end method

.method public onSummaryChange(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSummaryChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
