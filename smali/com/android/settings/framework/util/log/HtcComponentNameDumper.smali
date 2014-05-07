.class public Lcom/android/settings/framework/util/log/HtcComponentNameDumper;
.super Ljava/lang/Object;
.source "HtcComponentNameDumper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 23
    sget-object v0, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 24
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "tag"
    .parameter "componentName"

    .prologue
    .line 32
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 33
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "tag"
    .parameter "indent"
    .parameter "componentName"

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->toString(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to invoke dump(tag=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", indent=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static toString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "componentName"

    .prologue
    .line 58
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->toString(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .parameter "indent"
    .parameter "componentName"

    .prologue
    .line 86
    new-instance v0, Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    const-class v1, Landroid/content/ComponentName;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    .local v0, dumper:Lcom/android/settings/framework/util/log/HtcAssistedDumper;
    if-nez p1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     getClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    const-string v2, "                   (Return the class name of this component.)"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   getPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    const-string v2, "                   (Return the package name of this component.)"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShortClassName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    const-string v2, "                   (Return the class name, either fully qualified or in a shortened form (with a leading \'.\') if it is a suffix of the package.)"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    toShortString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    const-string v2, "                   (Return string representation of this class without the class\'s name as a prefix.)"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "         toString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->append(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcAssistedDumper;

    .line 105
    invoke-virtual {v0}, Lcom/android/settings/framework/util/log/HtcAssistedDumper;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
