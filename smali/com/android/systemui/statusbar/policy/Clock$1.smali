.class Lcom/android/systemui/statusbar/policy/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 160
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_policy_Clock$1_6147(Ljava/lang/String;)V
    .locals 2
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->-set0(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->-get1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->-get1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->-get0(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_Clock$1_6594(Ljava/util/Locale;)V
    .locals 2
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->-get2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->-set2(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->-set1(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_Clock$1_6853()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const-string/jumbo v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "tz":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk$1;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    .end local v2    # "tz":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void

    .line 172
    :cond_1
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 174
    .local v1, "newLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk$2;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
