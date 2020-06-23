.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String;

.field public static BATTERY:Ljava/lang/String;

.field public static GENERAL:Ljava/lang/String;

.field public static SCREENSHOTS:Ljava/lang/String;

.field public static STORAGE:Ljava/lang/String;

.field public static TVPIP:Ljava/lang/String;


# instance fields
.field private mCurrentConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "ALR"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "SCN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "GEN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "DSK"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "TPP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "BAT"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 44
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 35
    return-void
.end method

.method static createAll(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v3, 0x2

    .line 49
    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 50
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    .line 51
    const v6, 0x7f110368

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-direct {v0, v5, v6, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 53
    .local v0, "batteryChannel":Landroid/app/NotificationChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 54
    const-string/jumbo v6, "low_battery_sound"

    .line 53
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "soundPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 57
    const/16 v7, 0xa

    .line 55
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 60
    new-array v5, v11, [Landroid/app/NotificationChannel;

    .line 61
    new-instance v6, Landroid/app/NotificationChannel;

    .line 62
    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 63
    const v8, 0x7f110367

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-direct {v6, v7, v8, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 65
    new-instance v6, Landroid/app/NotificationChannel;

    .line 66
    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    .line 67
    const v8, 0x7f11036d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-direct {v6, v7, v8, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v6, v5, v9

    .line 69
    new-instance v6, Landroid/app/NotificationChannel;

    .line 70
    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    .line 71
    const v8, 0x7f11036c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-direct {v6, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v6, v5, v3

    .line 73
    new-instance v6, Landroid/app/NotificationChannel;

    .line 74
    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    .line 75
    const v8, 0x7f11036e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    .line 73
    :cond_0
    invoke-direct {v6, v7, v8, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v6, v5, v4

    .line 79
    aput-object v0, v5, v10

    .line 60
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 82
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    new-instance v3, Landroid/app/NotificationChannel;

    .line 87
    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    .line 88
    const v5, 0x7f110370

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-direct {v3, v4, v5, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 91
    :cond_1
    return-void
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 116
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    .line 99
    return-void
.end method
