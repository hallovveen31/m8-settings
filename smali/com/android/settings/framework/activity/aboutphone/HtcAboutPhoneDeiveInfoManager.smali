.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;
.super Ljava/lang/Object;
.source "HtcAboutPhoneDeiveInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager$MyThreadHandler;
    }
.end annotation


# static fields
.field public static final GETICCSN:Ljava/lang/String; = "METHOD_NAME_GET_ICCSN"

.field public static final GETIMEI:Ljava/lang/String; = "METHOD_NAME_GET_IMEI"

.field public static final GETIMEISV:Ljava/lang/String; = "METHOD_NAME_GET_IMEISV"

.field public static final GETPRI:Ljava/lang/String; = "METHOD_NAME_GET_PRI"

.field public static final GETPRL:Ljava/lang/String; = "METHOD_NAME_GET_PRL"

.field public static final GetMEID:Ljava/lang/String; = "METHOD_NAME_GET_MEID"

.field private static SingleInstance:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

.field private static final TAG:Ljava/lang/String;

.field private static mPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field private htctm:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->SingleInstance:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method public static getSingleton()Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->SingleInstance:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;-><init>()V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->SingleInstance:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    :cond_0
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->SingleInstance:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    return-object v0
.end method


# virtual methods
.method public GetDeviceinfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    if-nez v3, :cond_0

    const-string v3, "htctelephony"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/HtcTelephonyManager;

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->reflecGeneralGetterInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = XXXX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public reflecGeneralGetterInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    if-nez v8, :cond_0

    const-string v8, "htctelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/HtcTelephonyManager;

    iput-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    :cond_0
    :try_start_0
    const-string v8, "com.android.internal.telephony.HtcTelephonyInternal"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v8, "com.htc.service.HtcTelephonyManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v8, "generalGetterInternal"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->htctm:Lcom/htc/service/HtcTelephonyManager;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    :goto_0
    return-object v8

    :catch_0
    move-exception v4

    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "without this method:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v8, v9

    goto :goto_0
.end method
