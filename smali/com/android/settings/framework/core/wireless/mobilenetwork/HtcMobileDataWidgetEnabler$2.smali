.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;
.super Landroid/net/HtcMobileNetworkEngine;
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
    .line 147
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-direct {p0, p2}, Landroid/net/HtcMobileNetworkEngine;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCheckStateChange(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetChecked(Z)V

    .line 152
    return-void
.end method

.method public onEnableStateChange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setSwitchEnabled(Z)V

    .line 156
    return-void
.end method

.method public onSummaryChange(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
