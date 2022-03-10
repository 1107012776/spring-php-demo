<?php

namespace App\Model;


use App\Config\ShardingInitConfig;


use PhpShardingPdo\Components\SoftDeleteTrait;
use PhpShardingPdo\Core\Model;

Class UserSessionModel extends Model
{
    use SoftDeleteTrait;
    protected $tableName = 'user_session';
    protected $tableNameIndexConfig = [];
    protected $shardingInitConfigClass = ShardingInitConfig::class;
}